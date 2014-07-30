.class Lcom/android/server/WifiService$3;
.super Ljava/lang/Object;
.source "WifiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v1, 0x1

    #calls: Lcom/android/server/WifiService;->setWifiEnabledAfterSecurity(Z)Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;Z)Z

    .line 804
    return-void
.end method
