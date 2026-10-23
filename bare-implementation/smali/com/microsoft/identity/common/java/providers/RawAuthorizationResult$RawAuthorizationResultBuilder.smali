.class final Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private authorizationFinalUri:Ljava/net/URI;

.field private exception:Lcom/microsoft/identity/common/java/exception/BaseException;

.field private resultCode:I


# direct methods
.method public static access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->resultCode:I

    .line 2
    .line 3
    return-void
.end method

.method public static access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 2
    .line 3
    iget v1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->resultCode:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->authorizationFinalUri:Ljava/net/URI;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->exception:Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;-><init>(ILjava/net/URI;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static access$200(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->exception:Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 2
    .line 3
    return-void
.end method

.method public static access$300(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Ljava/net/URI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->authorizationFinalUri:Ljava/net/URI;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RawAuthorizationResult.RawAuthorizationResultBuilder(resultCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->resultCode:I

    .line 9
    .line 10
    invoke-static {v1}, Lfz5;->v(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", authorizationFinalUri="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->authorizationFinalUri:Ljava/net/URI;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", exception="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->exception:Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, ")"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
