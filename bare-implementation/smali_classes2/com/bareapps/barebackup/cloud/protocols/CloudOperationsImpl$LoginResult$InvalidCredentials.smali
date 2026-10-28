.class public final Lcom/bareapps/barebackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;
.super Lcom/bareapps/barebackup/cloud/protocols/CloudOperationsImpl$LoginResult;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bareapps/barebackup/cloud/protocols/CloudOperationsImpl$LoginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidCredentials"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bareapps/barebackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bareapps/barebackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bareapps/barebackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bareapps/barebackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;->INSTANCE:Lcom/bareapps/barebackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lzf4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/bareapps/barebackup/cloud/protocols/CloudOperationsImpl$LoginResult;-><init>(Ljava/lang/Exception;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
