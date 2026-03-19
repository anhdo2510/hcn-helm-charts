{{- define "default-app.name" -}}
{{- required "appName is required" .Values.appName | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "default-app.fullname" -}}
{{- required "appName is required" .Values.appName | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "default-app.serviceAccountName" -}}
{{- if .Values.serviceAccount.name -}}
{{- .Values.serviceAccount.name -}}
{{- else -}}
{{- printf "%s-%s" .Release.Namespace .Values.appName | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end }}
