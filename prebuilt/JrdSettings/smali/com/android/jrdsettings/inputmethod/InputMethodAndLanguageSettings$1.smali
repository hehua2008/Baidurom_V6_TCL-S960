.class Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings$1;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$inputDeviceDescriptor:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings$1;->val$inputDeviceDescriptor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;

    iget-object v1, p0, Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings$1;->val$inputDeviceDescriptor:Ljava/lang/String;

    #calls: Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;->access$000(Lcom/android/jrdsettings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x1

    return v0
.end method
