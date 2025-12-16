const HelloWorld = artifacts.require("HelloWorld");

contract("HelloWorld", (accounts) => {
  it("should initialize with 'Unknown'", async () => {
    const helloWorld = await HelloWorld.deployed();
    const name = await helloWorld.yourName();
    assert.equal(name, "Unknown", "Initial name should be 'Unknown'");
  });

  it("should change name with setName function", async () => {
    const helloWorld = await HelloWorld.deployed();
    await helloWorld.setName("Alice");
    const newName = await helloWorld.yourName();
    assert.equal(newName, "Alice", "Name should be changed to 'Alice'");
  });
});
