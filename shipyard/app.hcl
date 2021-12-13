k8s_config "app" {
  depends_on = ["module.consul"]
  disabled   = false

  cluster = "k8s_cluster.dc1"
  paths = [
    "../application/consul-defaults.yaml",
    "../application/api-dashboard.yaml",
    "../application/loadtest-dashboard.yaml",
    "../application/metrics.yaml",
    "../application/api.yaml",
    "../application/payments.yaml",
    "../application/loadtest.yaml",
  ]

  wait_until_ready = true
}
