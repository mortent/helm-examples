{{- define "mychart.configmap" }}
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ .value.name }}-configmap-{{ .index }}
data:
  source: "template"
  {{- range $key, $val := .value }}
  {{ $key }}: {{ $val | quote }}
  {{- end }}
{{- end }}