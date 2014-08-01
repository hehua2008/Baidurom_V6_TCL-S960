.class Lcom/android/jrdsettings/LowMemoryStorage$3;
.super Ljava/lang/Object;
.source "LowMemoryStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/LowMemoryStorage;->refreshDialog()V
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
    .line 118
    iput-object p1, p0, Lcom/android/jrdsettings/LowMemoryStorage$3;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/high16 v5, 0x1000

    .line 122
    if-nez p2, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, mIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Lcom/android/jrdsettings/LowMemoryStorage$3;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .restart local v0       #mIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.mediatek.filemanager"

    const-string v4, "com.mediatek.filemanager.FileManagerOperationActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/android/jrdsettings/LowMemoryStorage$3;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 135
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v1, mIntent1:Landroid/content/Intent;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    iget-object v2, p0, Lcom/android/jrdsettings/LowMemoryStorage$3;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 140
    .end local v1           #mIntent1:Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 141
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 142
    .restart local v1       #mIntent1:Landroid/content/Intent;
    const-string v2, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    iget-object v2, p0, Lcom/android/jrdsettings/LowMemoryStorage$3;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    .end local v1           #mIntent1:Landroid/content/Intent;
    :cond_3
    return-void
.end method
