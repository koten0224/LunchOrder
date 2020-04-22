import CodeMirror from "codemirror/lib/codemirror.js"

// import 'codemirror/lib/codemirror.js'
import "codemirror/lib/codemirror.css"
import "codemirror/mode/htmlmixed/htmlmixed.js"
import "codemirror/theme/dracula.css"
import "codemirror/addon/edit/closetag.js"
import "codemirror/addon/hint/show-hint.js"
import "codemirror/addon/hint/html-hint.js"


var editor = CodeMirror.fromTextArea(document.getElementById("codeMirror"), {
    lineNumbers: true,     // 显示行数
    indentUnit: 2,         // 缩进单位为4
    styleActiveLine: true, // 当前行背景高亮
    matchBrackets: true,   // 括号匹配
    mode: 'htmlmixed',     // HMTL混合模式
    lineWrapping: true,    // 自动换行
    theme: 'dracula',      // 使用monokai模版
    autoCloseTags: true,
    
});
console.log(editor)
// editor.on("inputRead",function(cm,changeObj){
//     if (changeObj.type =="keyup") {
//     CodeMirror.showHint(cm);
//     }

// });

editor.options.hintOptions = {
    tables: {
      table_name: ['column1', 'column2', 'column3', 'etc'],
      another_table: ['columnA', 'columnB']
    }, 
    disableKeywords: true,
    completeSingle: false,
    completeOnSingleClick: false
  };

editor.extraKeys = {
    // Tab键换成4个空格
    "Shift-n": function(cm){
        cm.showHint(cm, CodeMirror.hint.sql, cm.options.hintOptions)
    },
    Tab: function(cm) {
        var spaces = Array(cm.getOption("indentUnit") + 1).join(" ");
        cm.replaceSelection(spaces);
    },
    // F11键切换全屏
    F11: function(cm) {
        cm.setOption("fullScreen", !cm.getOption("fullScreen"));
    },
    // Esc键退出全屏
    Esc: function(cm) {
        cm.closeHint()
        if (cm.getOption("fullScreen")) cm.setOption("fullScreen", false);
    }
};