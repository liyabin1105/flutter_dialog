import 'package:flutter/material.dart';
import 'package:flutter_dialog/CustomDialog.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> listData = List();

  @override
  void initState() {
    super.initState();
    listData.add('没有标题的的Dialog');
    listData.add('有标题的的Dialog');
    listData.add('没有取消按钮');
    listData.add('自定义确定按钮文本');
    listData.add('自定义按钮文本颜色');
    listData.add('自定义确定按钮颜色');
    listData.add('自定义取消按钮颜色');
    listData.add('点击弹窗外部是否能关闭');
    listData.add('点击确定按钮回调');
    listData.add('弹窗关闭回调');
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16.0),
        child: ListView.separated(
          itemCount: listData == null ? 0 : listData.length,
          itemBuilder: (context, index) {
            //如果到了表尾
            return buildModule(context, index, listData[index]);
          },
          separatorBuilder: (context, index) => Divider(height: 1.0, color: Colors.green[200],),
        ),
      )
    );
  }

  Widget buildModule(BuildContext context, int index, String module) {
    return Container(
      height: 45.0,
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 32.0),
      child: GestureDetector(
        child: Text(module, style: TextStyle(fontSize: 16.0),),
        onTap: () {
          _showDialog(index, module);
        },
      ),
    );
  }

  void _showDialog(int index, String module) {
    switch(index) {
      case 0:
        _showDialog1(module);
        break;
      case 1:
        _showDialog2(module);
        break;
      case 2:
        _showDialog3(module);
        break;
      case 3:
        _showDialog4(module);
        break;
      case 4:
        _showDialog5(module);
        break;
      case 5:
        _showDialog6(module);
        break;
      case 6:
        _showDialog7(module);
        break;
      case 7:
        _showDialog8(module);
        break;
      case 8:
        _showDialog9(module);
        break;
      case 9:
        _showDialog10(module);
        break;
      default:
        break;
    }
  }

  void _showDialog1(String module) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return CustomDialog(
          content: module,
        );
      }
    );
  }

  void _showDialog2(String module) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return CustomDialog(
            title: '这是一个标题',
            content: module,
          );
        }
    );
  }

  void _showDialog3(String module) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return CustomDialog(
              title: '这是一个标题',
              content: module,
              isCancel: false,
          );
        }
    );
  }

  void _showDialog4(String module) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return CustomDialog(
            title: '这是一个标题',
            content: module,
            isCancel: true,
            confirmContent: '去查看'
          );
        }
    );
  }

  void _showDialog5(String module) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return CustomDialog(
            title: '这是一个标题',
            content: module,
            isCancel: true,
            confirmTextColor: Colors.red[400]
          );
        }
    );
  }

  void _showDialog6(String module) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return CustomDialog(
              title: '这是一个标题',
              content: module,
              isCancel: true,
              confirmColor: Colors.green[400]
          );
        }
    );
  }

  void _showDialog7(String module) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return CustomDialog(
          title: '这是一个标题',
          content: module,
          isCancel: true,
          cancelColor: Colors.red[400],
        );
      }
    );
  }

  void _showDialog8(String module) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return CustomDialog(
            title: '这是一个标题',
            content: module,
            isCancel: true,
            outsideDismiss: false,
          );
        }
    );
  }

  void _showDialog9(String module) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return CustomDialog(
            title: '这是一个标题',
            content: module,
            isCancel: true,
            confirmCallback: () {
              print('-----------点击了确定按钮');
            },
          );
        }
    );
  }

  void _showDialog10(String module) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return CustomDialog(
            title: '这是一个标题',
            content: module,
            isCancel: true,
            dismissCallback: () {
              print('-----------弹窗关闭了');
            },
          );
        }
    );
  }
}