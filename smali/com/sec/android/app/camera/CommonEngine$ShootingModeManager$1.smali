.class Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

.field final synthetic val$jpegData:[B

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;[BLandroid/location/Location;)V
    .locals 0

    .prologue
    .line 6141
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;->val$jpegData:[B

    iput-object p3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 6143
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # operator++ for: Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2708(Lcom/sec/android/app/camera/CommonEngine;)I

    .line 6145
    const-string v0, "storeImage"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6146
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-storeImage**StartU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6147
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;->val$jpegData:[B

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;->val$location:Landroid/location/Location;

    # invokes: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->storeImage([BLandroid/location/Location;)Z
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$2800(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;[BLandroid/location/Location;)Z

    .line 6148
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-storeImage**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6149
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 6151
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6153
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # operator-- for: Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2710(Lcom/sec/android/app/camera/CommonEngine;)I

    .line 6154
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-ImageSavingEnd**Point["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6155
    return-void
.end method
