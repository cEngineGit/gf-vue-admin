// ============================================================================
// This is auto-generated by gf cli tool only once. Fill this file as you wish.
// ============================================================================
package {{.TableName}}

import "github.com/gogf/gf/os/gtime"

// RecordNotFound 根据条件判断数据是否存在
// 有数据返回false
// 没数据 true
func RecordNotFound(where ...interface{}) bool {
	return Model.RecordNotFound(where...)
}

func (m *arModel) RecordNotFound(where ...interface{}) bool {
	r, err := m.M.FindOne(where...)
	if r == nil && err == nil {
		return true
	}
	return false
}

// Custom Model
type {{.StructName}} struct {
    {{- range .Fields}}
        {{- if eq .FieldName "Id" "ID" }}
    {{.FieldName}} uint `json:"{{.FieldJson}}"` // {{.Comment}}
        {{- else if eq .FieldType "bool" }}
    {{.FieldName}} int `json:"{{.FieldJson}}"` // {{.Comment}}
        {{- else if eq .FieldType "time.Time" }}
    {{.FieldName}} *gtime.Time `json:"{{.FieldJson}}"` // {{.Comment}}
        {{- else }}
    {{.FieldName}} {{.FieldType}} `json:"{{.FieldJson}}"` // {{.Comment}}
        {{- end }}
    {{- end }}
}