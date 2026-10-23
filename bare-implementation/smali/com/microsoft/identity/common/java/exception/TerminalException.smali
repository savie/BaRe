.class public final Lcom/microsoft/identity/common/java/exception/TerminalException;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/exception/IErrorInformation;


# instance fields
.field private final mErrorCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    iput-object p3, p0, Lcom/microsoft/identity/common/java/exception/TerminalException;->mErrorCode:Ljava/lang/String;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "errorCode is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method


# virtual methods
.method public final getErrorCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/exception/TerminalException;->mErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
