.class Lcom/sec/android/app/camera/CommonEngine$12;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine;->doTakeVideoSnapShotAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 8753
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$12;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 5
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    .line 8755
    const-wide/16 v2, 0x400

    const-string v1, "TakePicture as Video SnapShot Wait Callback"

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 8757
    const-string v1, "CommonEngine"

    const-string v2, "Jpeg Image callback"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8759
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$12$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/CommonEngine$12$1;-><init>(Lcom/sec/android/app/camera/CommonEngine$12;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8880
    .local v0, "savingThread":Ljava/lang/Thread;
    const-string v1, "startsaveimage"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 8881
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8882
    return-void
.end method
