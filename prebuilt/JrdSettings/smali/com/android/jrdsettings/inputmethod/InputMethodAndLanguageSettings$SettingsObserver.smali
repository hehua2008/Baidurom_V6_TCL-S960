.class Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->this$0:Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;

    .line 691
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 692
    iput-object p3, p0, Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->mContext:Landroid/content/Context;

    .line 693
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->this$0:Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;

    #calls: Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V
    invoke-static {v0}, Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;->access$100(Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;)V

    .line 697
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 709
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 700
    iget-object v1, p0, Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 701
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 703
    const-string v1, "selected_input_method_subtype"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 705
    return-void
.end method
