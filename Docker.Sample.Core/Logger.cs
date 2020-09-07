namespace Docker.Sample.Core
{
    using System;

    public static class Logger
    {
        public static void Log(string input) => 
            Console.WriteLine("[{0}] - {1}", DateTime.Now.ToString("o"), input);
    }
}