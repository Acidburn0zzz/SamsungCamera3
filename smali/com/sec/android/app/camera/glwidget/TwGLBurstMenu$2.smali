.class Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;
.super Ljava/lang/Object;
.source "TwGLBurstMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->DBUpdatebyThreadDuringLowSaving()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1047
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1049
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .local v5, "values":Landroid/content/ContentValues;
    if-eqz v5, :cond_0

    .line 1050
    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, "burstFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v3, "mFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1053
    const-string v6, "TwGLBurstMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DBUpdatebyThreadDuringLowSaving removed ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1075
    .end local v0    # "burstFileName":Ljava/lang/String;
    .end local v3    # "mFile":Ljava/io/File;
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 1076
    .local v4, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v6, "TwGLBurstMenu"

    const-string v7, "Not enough space in database"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v6

    const v7, 0x7f0d0159

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1082
    .end local v4    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :goto_1
    return-void

    .line 1057
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1058
    const-string v6, "TwGLBurstMenu"

    const-string v7, " BackUpDBupdateStack is empty - return"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1078
    :catch_1
    move-exception v1

    .line 1079
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "TwGLBurstMenu"

    const-string v7, "database error"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1062
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1063
    .restart local v5    # "values":Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1064
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v7, v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 1065
    .local v2, "imageValues":[Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->removeAllElements()V

    .line 1066
    const-string v6, "TwGLBurstMenu"

    const-string v7, "db insert E"

    invoke-static {v6, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1068
    const-string v6, "TwGLBurstMenu"

    const-string v7, "db insert X"

    invoke-static {v6, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    .end local v2    # "imageValues":[Landroid/content/ContentValues;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->lastImageUpdate(Landroid/content/ContentValues;)V

    .line 1074
    .end local v5    # "values":Landroid/content/ContentValues;
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    const/4 v7, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;
    invoke-static {v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$602(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_1

    .line 1072
    :cond_3
    const-string v6, "TwGLBurstMenu"

    const-string v7, "BackUpDBupdateStack is Empty"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method
