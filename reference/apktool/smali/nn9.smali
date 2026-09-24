.class public final Lnn9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lke;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Lpb9;->k:I

    .line 2
    .line 3
    sget-object v0, Lld9;->x:[Ljava/lang/Object;

    .line 4
    .line 5
    new-instance v0, Lae9;

    .line 6
    .line 7
    const-string v1, "FIDO"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lae9;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lke;

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    const/16 v2, 0x13

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lnn9;->a:Lke;

    .line 22
    .line 23
    return-void
.end method
