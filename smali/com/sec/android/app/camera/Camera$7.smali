.class Lcom/sec/android/app/camera/Camera$7;
.super Landroid/telephony/PhoneStateListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->getCallStateListener2(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1810
    const-string v1, "Camera3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged 2nd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    packed-switch p1, :pswitch_data_0

    .line 1861
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCall2StateOffHook:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/camera/Camera;->access$2802(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1862
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/Camera;->setCallInProgress(Z)V

    .line 1863
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->setCallDisconnected(Z)V

    .line 1864
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsCallingFromListener1:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2500(Lcom/sec/android/app/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1865
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCallStatus(I)V

    .line 1867
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isEnableDuringCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1868
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mDlgStatus:[Z
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2700(Lcom/sec/android/app/camera/Camera;)[Z

    move-result-object v1

    aget-boolean v1, v1, v6

    if-ne v1, v4, :cond_1

    .line 1869
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/Camera;->hideDlg(I)V

    .line 1874
    :cond_1
    :goto_0
    return-void

    .line 1815
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1816
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1818
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 1819
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    goto :goto_0

    .line 1824
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 1825
    .local v0, "burstView":Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_3

    .line 1826
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBurstCapturing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1827
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isEnableDuringCall()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_VT()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1828
    const-string v1, "Camera3"

    const-string v2, "stop burstshot immediately by vt call event."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/Camera;->bSkipUpdateThumbnail:Z

    .line 1830
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->onPause()V

    .line 1831
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-boolean v5, v1, Lcom/sec/android/app/camera/Camera;->bSkipUpdateThumbnail:Z

    .line 1835
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    .line 1836
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_VoIPCall()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_VT()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1841
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "popup_incoming_call"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1842
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0d02d8

    invoke-static {v1, v2, v4}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1848
    .end local v0    # "burstView":Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCall2StateOffHook:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/Camera;->access$2802(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1849
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->setCallInProgress(Z)V

    .line 1850
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/Camera;->setCallDisconnected(Z)V

    .line 1851
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1852
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCallStatus(I)V

    .line 1854
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isEnableDuringCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1855
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mDlgStatus:[Z
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2700(Lcom/sec/android/app/camera/Camera;)[Z

    move-result-object v1

    aget-boolean v1, v1, v6

    if-nez v1, :cond_1

    .line 1856
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$7;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    goto/16 :goto_0

    .line 1812
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
