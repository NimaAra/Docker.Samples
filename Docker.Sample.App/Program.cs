namespace Docker.Sample.App
{
    using System.Linq;
    using System.Threading.Tasks;
    using Docker.Sample.Core;

    class Program
    {
        static async Task Main(string[] args)
        {
            string input = string.Empty;
            if (args.Any())
            {
                input = args[0];
            }

            Logger.Log("Input: " + input);

            while (true)
            {
                Logger.Log(string.Empty);
                await Task.Delay(1000);
            }
        }
    }
}
