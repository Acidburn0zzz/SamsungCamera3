.class Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox$1;
.super Ljava/lang/Object;
.source "TwGLEditableTopBarDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    invoke-interface {v0, v1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
