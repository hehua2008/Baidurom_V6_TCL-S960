.class Lcom/android/jrdsettings/dlna/DLNAEnabler$2;
.super Landroid/os/Handler;
.source "DLNAEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/dlna/DLNAEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/dlna/DLNAEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$2;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    .line 384
    .local v0, what:I
    if-ne v0, v2, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$2;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mValue:I
    invoke-static {v1}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$500(Lcom/android/jrdsettings/dlna/DLNAEnabler;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$2;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;
    invoke-static {v1}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$600(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Lcom/android/jrdsettings/MultiShareManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/jrdsettings/MultiShareManager;->startMultiScreen()V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler$2;->this$0:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAEnabler;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;
    invoke-static {v1}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->access$600(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Lcom/android/jrdsettings/MultiShareManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/jrdsettings/MultiShareManager;->stopMultiScreen()Z

    goto :goto_0
.end method
