.class Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;
.super Landroid/os/Handler;
.source "TwGLSelfieAlarmMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;

    .line 167
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 168
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 174
    :pswitch_0
    const-string v0, "TwGLSelfieAlarmMenu"

    const-string v1, "Inactivity timer is expired. finish."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$OnBurstCaptureCancelListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$OnBurstCaptureCancelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$OnBurstCaptureCancelListener;->onBurstCaptureCancelled()V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->reset()V

    goto :goto_0

    .line 179
    :pswitch_1
    const-string v0, "TwGLSelfieAlarmMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStoreCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mStoreCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCaptureCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCaptureCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCaptureCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)I

    move-result v0

    if-lez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mStoreCount:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)I

    move-result v1

    const/16 v2, 0xe10

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mCaptureCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)I

    move-result v3

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mStoreCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->access$102(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;I)I

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mBurstMsgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->mBurstMsgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSelfieAlarmMenu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
