.class Lcom/jrdserver/dlnaservice/DLNAManagerService$2;
.super Landroid/os/AsyncTask;
.source "DLNAManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdserver/dlnaservice/DLNAManagerService;->registerDLNACallBack(Ljrdcom/dlnaservice/IDLNACallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;


# direct methods
.method constructor <init>(Lcom/jrdserver/dlnaservice/DLNAManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$2;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$2;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    #getter for: Lcom/jrdserver/dlnaservice/DLNAManagerService;->mEnable:Z
    invoke-static {v0}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->access$200(Lcom/jrdserver/dlnaservice/DLNAManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/jrdserver/dlnaservice/DLNAManagerService$2;->this$0:Lcom/jrdserver/dlnaservice/DLNAManagerService;

    invoke-virtual {v0}, Lcom/jrdserver/dlnaservice/DLNAManagerService;->stopWork()Z

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/jrdserver/dlnaservice/DLNAManagerService$2;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
