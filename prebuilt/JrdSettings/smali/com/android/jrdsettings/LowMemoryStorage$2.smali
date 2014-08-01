.class Lcom/android/jrdsettings/LowMemoryStorage$2;
.super Ljava/lang/Object;
.source "LowMemoryStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/LowMemoryStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/LowMemoryStorage;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/LowMemoryStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/jrdsettings/LowMemoryStorage$2;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 57
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/android/jrdsettings/LowMemoryStorage$2;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 65
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/jrdsettings/LowMemoryStorage$2;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
