.class Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/settings/statusbar/StatusBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;


# direct methods
.method private constructor <init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;Lcom/jrdcom/settings/statusbar/StatusBarSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;-><init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 425
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, actionStr:Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 428
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, pkgName:Ljava/lang/String;
    iget-object v3, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #calls: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->addPackage(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$800(Lcom/jrdcom/settings/statusbar/StatusBarSettings;Ljava/lang/String;)V

    .line 435
    .end local v1           #data:Landroid/net/Uri;
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 432
    .restart local v1       #data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 433
    .restart local v2       #pkgName:Ljava/lang/String;
    iget-object v3, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #calls: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->removePackage(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$900(Lcom/jrdcom/settings/statusbar/StatusBarSettings;Ljava/lang/String;)V

    goto :goto_0
.end method

.method registerReceiver()V
    .locals 2

    .prologue
    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$100(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 418
    return-void
.end method

.method unregisterReceiver()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$PackageIntentReceiver;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$100(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 421
    return-void
.end method
