.class Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$1;
.super Ljava/lang/Object;
.source "SubViewTutorialRecordingMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 88
    const/4 v0, 0x0

    # setter for: Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mPlayAnimation:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->access$002(Z)Z

    .line 89
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 100
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 94
    const/4 v0, 0x1

    # setter for: Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mPlayAnimation:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->access$002(Z)Z

    .line 95
    return-void
.end method
