.class public Lcom/sec/android/app/camera/plugin/SecCameraEffectLib;
.super Ljava/lang/Object;
.source "SecCameraEffectLib.java"


# static fields
.field public static final EFFECT_COMIC:I = 0xa

.field public static final EFFECT_EXTERNAL_EFFECT:I = 0x1f40

.field public static final EFFECT_FADEDCOLOR:I = 0x9

.field public static final EFFECT_FISHEYE:I = 0x11

.field public static final EFFECT_FOR_REAL:I = 0x12

.field public static final EFFECT_GOTHIC_NOIR:I = 0xc

.field public static final EFFECT_GREYSCALE:I = 0x7

.field public static final EFFECT_IMPRESSIONIST:I = 0xd

.field public static final EFFECT_INSTAGRAM_NASHVILLE:I = 0x10

.field public static final EFFECT_NEGATIVE:I = 0x8

.field public static final EFFECT_NOIR_NOTE:I = 0x14

.field public static final EFFECT_NORMAL:I = 0x0

.field public static final EFFECT_NOSTALGIA:I = 0x2

.field public static final EFFECT_OLDPHOTOTEXTURE:I = 0x5

.field public static final EFFECT_PASTEL_SKETCH:I = 0xb

.field public static final EFFECT_RAINBOW:I = 0xf

.field public static final EFFECT_RETRO:I = 0x3

.field public static final EFFECT_SANDSTONE:I = 0xe

.field public static final EFFECT_SEPIA:I = 0x1

.field public static final EFFECT_STUCCHEVOLE:I = 0x13

.field public static final EFFECT_SUNSHINE:I = 0x6

.field public static final EFFECT_VIGNETTE_OUTFOCUS:I = 0x16

.field public static final EFFECT_VINCENT:I = 0x15

.field public static final EFFECT_VINTAGE:I = 0x4

.field public static mIsFrontCamera:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "seccameraeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/plugin/SecCameraEffectLib;->mIsFrontCamera:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addTexture(IIII[I)V
.end method

.method public static native deinit()V
.end method

.method public static deinitEffectLib()V
    .locals 0

    .prologue
    .line 86
    invoke-static {}, Lcom/sec/android/app/camera/plugin/SecCameraEffectLib;->deinit()V

    .line 87
    return-void
.end method

.method public static native drawTexture([FI[F[FF)V
.end method

.method public static native init(Z)V
.end method

.method public static initEffectLib(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isDownloadableOnly"    # Z

    .prologue
    .line 80
    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/SecCameraEffectLib;->init(Z)V

    .line 81
    if-nez p1, :cond_0

    .line 82
    invoke-static {p0}, Lcom/sec/android/app/camera/plugin/SecCameraEffectLib;->initResource(Landroid/content/Context;)V

    .line 83
    :cond_0
    return-void
.end method

.method public static native initExternalEffectResources(I)V
.end method

.method public static native initExternalEffects(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static initExternalResource(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;)V
    .locals 7
    .param p0, "externalFilterLoader"    # Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterDBChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    .line 199
    :cond_1
    const-string v4, "SecCameraEffectLib"

    const-string v5, "moved plugin"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectCount()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/SecCameraEffectLib;->initExternalEffectResources(I)V

    .line 201
    const/16 v0, 0x1f40

    .line 202
    .local v0, "effectOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 203
    add-int v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "libName":Ljava/lang/String;
    add-int v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 206
    :cond_2
    const-string v4, "SecCameraEffectLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This is invalid filter! [FilterID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_3
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/plugin/SecCameraEffectLib;->initExternalEffects(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 211
    .end local v2    # "libName":Ljava/lang/String;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static initResource(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 99
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 188
    .local v1, "data":[I
    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :cond_0
    const/4 v1, 0x0

    .line 192
    return-void
.end method

.method public static isFrontCamera()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/sec/android/app/camera/plugin/SecCameraEffectLib;->mIsFrontCamera:Z

    return v0
.end method

.method public static native setCurrentEffect(I)V
.end method

.method public static setFrontCamera(Z)V
    .locals 0
    .param p0, "isFrontCamera"    # Z

    .prologue
    .line 90
    sput-boolean p0, Lcom/sec/android/app/camera/plugin/SecCameraEffectLib;->mIsFrontCamera:Z

    .line 91
    return-void
.end method

.method public static native setSize(FF)V
.end method
