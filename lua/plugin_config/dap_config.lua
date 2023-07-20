local dap = require('dap')

dap.configurations.java = {
    {
        name = "Debug (Attach) - Remote",
        type = "java",
        request = "attach",
        hostName = "localhost",
        port = 5005,
    },
    {
        name = "Debug (Attach) - Local",
        type = "java",
        request = "attach",
        hostName = "localhost",
        port = 5005,
    },
}
