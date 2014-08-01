.class public Lcom/google/api/client/auth/oauth2/BearerToken;
.super Ljava/lang/Object;
.source "BearerToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/BearerToken$QueryParameterAccessMethod;,
        Lcom/google/api/client/auth/oauth2/BearerToken$FormEncodedBodyAccessMethod;,
        Lcom/google/api/client/auth/oauth2/BearerToken$AuthorizationHeaderAccessMethod;
    }
.end annotation


# static fields
.field static final PARAM_NAME:Ljava/lang/String; = "access_token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static authorizationHeaderAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/google/api/client/auth/oauth2/BearerToken$AuthorizationHeaderAccessMethod;

    invoke-direct {v0}, Lcom/google/api/client/auth/oauth2/BearerToken$AuthorizationHeaderAccessMethod;-><init>()V

    return-object v0
.end method

.method public static formEncodedBodyAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/google/api/client/auth/oauth2/BearerToken$FormEncodedBodyAccessMethod;

    invoke-direct {v0}, Lcom/google/api/client/auth/oauth2/BearerToken$FormEncodedBodyAccessMethod;-><init>()V

    return-object v0
.end method

.method public static queryParameterAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/google/api/client/auth/oauth2/BearerToken$QueryParameterAccessMethod;

    invoke-direct {v0}, Lcom/google/api/client/auth/oauth2/BearerToken$QueryParameterAccessMethod;-><init>()V

    return-object v0
.end method
