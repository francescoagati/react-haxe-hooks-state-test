import haxe.macro.Expr;
using haxe.macro.Tools;
using StringTools;

class Macro {

  public static macro function get_path<T>(obj:ExprOf<T>,path:Expr) {
    var s_path = path.toString().replace("_.","");
    return macro {
      var _ = $obj;
      $path;
      thx.Objects.getPath(_,$v{s_path});
    };
  }

  public static macro function set_path<T>(obj:ExprOf<T>,path:Expr,value:Expr) {
    var s_path = path.toString().replace("_.","");
    var pos = haxe.macro.Context.currentPos();
    return macro {
      var _ = $obj;
      @:pos(pos) {$path == $value;};
      thx.Objects.setPath(_,$v{s_path},$value);
    };
  }



}