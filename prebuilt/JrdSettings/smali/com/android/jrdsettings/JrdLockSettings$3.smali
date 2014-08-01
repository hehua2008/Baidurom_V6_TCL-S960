.class Lcom/android/jrdsettings/JrdLockSettings$3;
.super Ljava/lang/Object;
.source "JrdLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/JrdLockSettings;->displayWallpaperDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/JrdLockSettings;

.field final synthetic val$intents:[Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/JrdLockSettings;[Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/jrdsettings/JrdLockSettings$3;->this$0:Lcom/android/jrdsettings/JrdLockSettings;

    iput-object p2, p0, Lcom/android/jrdsettings/JrdLockSettings$3;->val$intents:[Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/jrdsettings/JrdLockSettings$3;->this$0:Lcom/android/jrdsettings/JrdLockSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/JrdLockSettings$3;->val$intents:[Landroid/content/Intent;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 410
    return-void
.end method
