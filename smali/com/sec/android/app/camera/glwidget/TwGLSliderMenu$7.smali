.class Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$7;
.super Ljava/lang/Object;
.source "TwGLSliderMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$7;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$7;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$7;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnContinuousValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnContinuousValueMenuSelectListener;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$7;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnContinuousValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnContinuousValueMenuSelectListener;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->CONTINUOUS_VALUE_OFFSET:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->access$600()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnContinuousValueMenuSelectListener;->onContinuousMenuSelect(I)V

    .line 782
    :cond_0
    return-void
.end method
