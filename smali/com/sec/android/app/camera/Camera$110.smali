.class Lcom/sec/android/app/camera/Camera$110;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->showRemoteViewFinderLaunchSettingsToTurnOnGPSDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 19701
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$110;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 19703
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$110;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mRemoteViewFinderLaunchSettingsToTournOnGPSDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$8100(Lcom/sec/android/app/camera/Camera;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19704
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$110;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderLaunchSettingsToTurnOnGPSDialog(I)V

    .line 19705
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$110;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mRemoteViewFinderLaunchSettingsToTournOnGPSDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$8100(Lcom/sec/android/app/camera/Camera;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 19707
    :cond_0
    return-void
.end method
