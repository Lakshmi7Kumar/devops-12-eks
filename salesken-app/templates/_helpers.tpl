{{- define "salesken-app.name" -}}
{{- .Chart.Name }}
{{- end }}

{{- define "salesken-app.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}

{{- define "salesken-app.labels" -}}
app.kubernetes.io/name: {{ include "salesken-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}
