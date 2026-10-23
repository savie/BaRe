.class public final Lyd8;
.super Lm5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Lnz8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    const/16 v1, 0x6375

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lyd8;->d:Lnz8;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Lyd8;->d:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method
