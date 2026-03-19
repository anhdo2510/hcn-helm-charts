{{- define "default-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "default-app.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "default-app.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "default-app.serviceAccountName" -}}
{{- if .Values.serviceAccount.name -}}
{{- .Values.serviceAccount.name -}}
{{- else -}}
{{- printf "%s-%s" .Release.Namespace (include "default-app.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end }}
