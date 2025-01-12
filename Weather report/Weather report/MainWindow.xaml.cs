using System;
using System.Net.Http;
using Newtonsoft.Json;
using System.Threading.Tasks;
using System.Windows;

namespace WeatherApp
{

    public partial class MainWindow : Window
    {
        private void CityComboBox_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            
            string selectedCity = CityComboBox.SelectedItem?.ToString();
            MessageBox.Show($"Selected City: {selectedCity}");
        }

        private static string apiKey = "1912d9e280a43e77bce91b2d18e23263"; 
        private static string baseUrl = "http://api.openweathermap.org/data/2.5/weather";

        public MainWindow()
        {
            InitializeComponent();
        }

        private async void GetWeatherButton_Click(object sender, RoutedEventArgs e)
        {
            string city = CityComboBox.Text;

            if (string.IsNullOrWhiteSpace(city))
            {
                MessageBox.Show("Please enter a city name.");
                return;
            }

            await GetWeatherAsync(city);
        }

        private async Task GetWeatherAsync(string city)
        {
            using (HttpClient client = new HttpClient())
            {
                string url = $"{baseUrl}?q={city}&appid={apiKey}&units=metric";
                try
                {
                    HttpResponseMessage response = await client.GetAsync(url);
                    response.EnsureSuccessStatusCode();
                    string responseBody = await response.Content.ReadAsStringAsync();
                    var weatherData = JsonConvert.DeserializeObject<WeatherResponse>(responseBody);

                    // Display weather info
                    WeatherLabel.Text = $"Weather in {weatherData.Name}:";
                    TemperatureLabel.Text = $"Temperature: {weatherData.Main.Temp}°C";
                    DescriptionLabel.Text = $"Weather: {weatherData.Weather[0].Description}";
                    HumidityLabel.Text = $"Humidity: {weatherData.Main.Humidity}%";
                    WindSpeedLabel.Text = $"Wind Speed: {weatherData.Wind.Speed} m/s";
                }
                catch (HttpRequestException ex)
                {
                    MessageBox.Show($"Error: {ex.Message}");
                }
            }
        }
    }

    public class WeatherResponse
    {
        public Main Main { get; set; }
        public Weather[] Weather { get; set; }
        public Wind Wind { get; set; }
        public string Name { get; set; }
    }

    public class Main
    {
        public double Temp { get; set; }
        public int Humidity { get; set; }
    }

    public class Weather
    {
        public string Description { get; set; }
    }

    public class Wind
    {
        public double Speed { get; set; }
    }

}
