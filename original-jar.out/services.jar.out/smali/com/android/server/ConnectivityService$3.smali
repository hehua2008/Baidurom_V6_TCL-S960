.class Lcom/android/server/ConnectivityService$3;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x1

    #calls: Lcom/android/server/ConnectivityService;->setMobileDataEnabledAfterSecurity(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;Z)V

    .line 1932
    return-void
.end method
