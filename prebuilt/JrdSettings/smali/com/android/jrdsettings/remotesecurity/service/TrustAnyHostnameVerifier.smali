.class public Lcom/android/jrdsettings/remotesecurity/service/TrustAnyHostnameVerifier;
.super Ljava/lang/Object;
.source "TrustAnyHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
