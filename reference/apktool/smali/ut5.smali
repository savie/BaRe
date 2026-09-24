.class public final Lut5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/client/AuthenticationCallback;


# instance fields
.field public final synthetic a:Lvt5;


# direct methods
.method public constructor <init>(Lvt5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lut5;->a:Lvt5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 6
    .line 7
    iget-object p0, p0, Lut5;->a:Lvt5;

    .line 8
    .line 9
    iget-object v2, p0, La55;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v3, "Authentication failed: "

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lvt5;->h:Lix6;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onSuccess(Lcom/microsoft/identity/client/AuthenticationResult;)V
    .locals 6

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    iget-object p0, p0, Lut5;->a:Lvt5;

    .line 4
    .line 5
    iget-object v1, p0, La55;->b:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v2, "Successfully authenticated"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0, p1}, Lvt5;->j(ZLcom/microsoft/identity/client/AuthenticationResult;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
