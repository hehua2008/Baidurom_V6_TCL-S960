.class public Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest;
.super Ljava/lang/Object;
.source "GoogleAccessTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleAssertionGrant;,
        Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;,
        Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleAuthorizationCodeGrant;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUTHORIZATION_SERVER_URL:Ljava/lang/String; = "https://accounts.google.com/o/oauth2/token"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method static init(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 202
    const-string v0, "https://accounts.google.com/o/oauth2/token"

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->authorizationServerUrl:Ljava/lang/String;

    .line 203
    return-void
.end method
