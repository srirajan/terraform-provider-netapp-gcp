# Specify GCP resources

resource "netapp-gcp_volume" "gcp-volume" {
  provider = netapp-gcp
  name = "deleteme_asapGO"
  region = "us-west2"
  protocol_types = ["NFSv3","CIFS"]
  network = "cvs-terraform-vpc"
  size = 2
  service_level = "medium"
}

resource "netapp-gcp_snapshot" "gcp-snapshot" {
  provider = netapp-gcp
  name = "deleteme_snapshot_asapGo"
  region = "us-west2"
  volume_name =  "testing"
  creation_token = "pensive-sleepy-easley"
  depends_on = [netapp-gcp_volume.gcp-volume]
}