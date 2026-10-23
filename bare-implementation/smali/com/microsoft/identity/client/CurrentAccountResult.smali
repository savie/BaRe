.class public final Lcom/microsoft/identity/client/CurrentAccountResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mCurrentAccount:Lcom/microsoft/identity/client/Account;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/MultiTenantAccount;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/CurrentAccountResult;->mCurrentAccount:Lcom/microsoft/identity/client/Account;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getCurrentAccount()Lcom/microsoft/identity/client/Account;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/CurrentAccountResult;->mCurrentAccount:Lcom/microsoft/identity/client/Account;

    .line 2
    .line 3
    return-object p0
.end method
