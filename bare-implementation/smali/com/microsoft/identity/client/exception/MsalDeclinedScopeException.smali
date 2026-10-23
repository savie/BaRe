.class public final Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;
.super Lcom/microsoft/identity/client/exception/MsalException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mGrantedScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const-string p2, "Some or all requested scopes have been declined by the Server"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "declined_scope_error"

    .line 5
    .line 6
    invoke-direct {p0, v1, p2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;->mGrantedScopes:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method
