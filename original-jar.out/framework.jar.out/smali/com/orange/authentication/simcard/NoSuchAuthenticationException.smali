.class public Lcom/orange/authentication/simcard/NoSuchAuthenticationException;
.super Lcom/orange/authentication/simcard/SimCardAuthenticationException;
.source "NoSuchAuthenticationException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method