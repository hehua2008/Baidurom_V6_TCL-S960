.class Lcom/android/jrdsettings/TrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/TrustedCredentialsSettings;->addTab(Lcom/android/jrdsettings/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/jrdsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/TrustedCredentialsSettings;Lcom/android/jrdsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/jrdsettings/TrustedCredentialsSettings$1;->this$0:Lcom/android/jrdsettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/jrdsettings/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/jrdsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/jrdsettings/TrustedCredentialsSettings$1;->this$0:Lcom/android/jrdsettings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/jrdsettings/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/jrdsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/android/jrdsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/jrdsettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    #calls: Lcom/android/jrdsettings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/jrdsettings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/TrustedCredentialsSettings;->access$1000(Lcom/android/jrdsettings/TrustedCredentialsSettings;Lcom/android/jrdsettings/TrustedCredentialsSettings$CertHolder;)V

    .line 166
    return-void
.end method
