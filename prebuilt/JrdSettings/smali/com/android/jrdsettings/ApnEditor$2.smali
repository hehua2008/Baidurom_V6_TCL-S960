.class Lcom/android/jrdsettings/ApnEditor$2;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/ApnEditor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-static {}, Lcom/android/jrdsettings/ApnEditor;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background changed apn "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    const/4 v1, 0x1

    #setter for: Lcom/android/jrdsettings/ApnEditor;->mFirstTime:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/ApnEditor;->access$1202(Lcom/android/jrdsettings/ApnEditor;Z)Z

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$1300(Lcom/android/jrdsettings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/jrdsettings/ApnEditor;->access$1300(Lcom/android/jrdsettings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/jrdsettings/ApnEditor;->access$1300(Lcom/android/jrdsettings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/jrdsettings/ApnEditor;->access$1400(Lcom/android/jrdsettings/ApnEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/android/jrdsettings/ApnEditor;->access$1500()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    #setter for: Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/ApnEditor;->access$1302(Lcom/android/jrdsettings/ApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 255
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/jrdsettings/ApnEditor;->access$1300(Lcom/android/jrdsettings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 256
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #calls: Lcom/android/jrdsettings/ApnEditor;->fillUi()V
    invoke-static {v0}, Lcom/android/jrdsettings/ApnEditor;->access$1600(Lcom/android/jrdsettings/ApnEditor;)V

    .line 257
    return-void

    .line 250
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$1300(Lcom/android/jrdsettings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$2;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$1300(Lcom/android/jrdsettings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method
