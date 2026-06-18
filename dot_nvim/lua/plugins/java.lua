if true then
  return {}
end

return {
  "mfussenegger/nvim-jdtls",
  ft = "java",
  opts = function()
    return {
      cmd = {
        "java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Xms1g", -- Increase initial heap size
        "-Xmx4g", -- Increase maximum heap size
        "-XX:+UseG1GC",
        "-XX:+UseStringDeduplication",
        "--add-modules=ALL-SYSTEM",
        "--add-opens",
        "java.base/java.util=ALL-UNNAMED",
      },
    }
  end,
}
