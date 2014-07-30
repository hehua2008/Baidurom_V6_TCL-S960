.class public Lcom/orange/authentication/simcard/UserAuthenticationRejectException;
.super Lcom/orange/authentication/simcard/SimCardAuthenticationException;
.source "UserAuthenticationRejectException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationException;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
