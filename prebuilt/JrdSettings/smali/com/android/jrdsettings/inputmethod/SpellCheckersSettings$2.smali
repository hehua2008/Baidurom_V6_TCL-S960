.class Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/android/jrdsettings/inputmethod/SingleSpellCheckerPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings;

.field final synthetic val$scp:Lcom/android/jrdsettings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings;Lcom/android/jrdsettings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/android/jrdsettings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/android/jrdsettings/inputmethod/SingleSpellCheckerPreference;

    #calls: Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Lcom/android/jrdsettings/inputmethod/SingleSpellCheckerPreference;)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings;->access$000(Lcom/android/jrdsettings/inputmethod/SpellCheckersSettings;Lcom/android/jrdsettings/inputmethod/SingleSpellCheckerPreference;)V

    .line 132
    return-void
.end method
