.class Lcom/android/jrdsettings/users/UserSettings$5;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/users/UserSettings;

.field final synthetic val$longMessageDisplayed:Z

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/users/UserSettings;ZLandroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/jrdsettings/users/UserSettings$5;->this$0:Lcom/android/jrdsettings/users/UserSettings;

    iput-boolean p2, p0, Lcom/android/jrdsettings/users/UserSettings$5;->val$longMessageDisplayed:Z

    iput-object p3, p0, Lcom/android/jrdsettings/users/UserSettings$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings$5;->this$0:Lcom/android/jrdsettings/users/UserSettings;

    #calls: Lcom/android/jrdsettings/users/UserSettings;->addUserNow()V
    invoke-static {v0}, Lcom/android/jrdsettings/users/UserSettings;->access$1000(Lcom/android/jrdsettings/users/UserSettings;)V

    .line 358
    iget-boolean v0, p0, Lcom/android/jrdsettings/users/UserSettings$5;->val$longMessageDisplayed:Z

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings$5;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_add_user_long_message_displayed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 362
    :cond_0
    return-void
.end method
