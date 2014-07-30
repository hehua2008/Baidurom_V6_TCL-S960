.class public Lcom/orange/authentication/simcard/SynchronisationFailureException;
.super Lcom/orange/authentication/simcard/SimCardAuthenticationException;
.source "SynchronisationFailureException.java"


# instance fields
.field private mAuts:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationException;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "auts"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationException;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/orange/authentication/simcard/SynchronisationFailureException;->mAuts:[B

    .line 45
    return-void
.end method


# virtual methods
.method public getAuts()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/orange/authentication/simcard/SynchronisationFailureException;->mAuts:[B

    return-object v0
.end method
