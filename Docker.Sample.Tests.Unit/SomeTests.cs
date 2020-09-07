namespace Docker.Sample.Tests.Unit
{
    using Docker.Sample.Core;
    using NUnit.Framework;
    using Shouldly;

    [TestFixture]
    internal sealed class SomeTests
    {
        [Test]
        public void When_test_is_passing()
        {
            Logger.Log(nameof(When_test_is_passing));
            1.ShouldBe(1);
        }

        [Test]
        // [Ignore("For testing")]
        public void When_test_is_failing()
        {
            Logger.Log(nameof(When_test_is_failing));
            1.ShouldBe(2);
        }
    }
}