{{- define "workmomentum.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "workmomentum.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- $fullname := printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- if eq $fullname $name -}}
{{- $fullname = $name -}}
{{- end -}}
{{- $fullname -}}
{{- end -}}
