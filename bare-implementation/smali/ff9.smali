.class public final Lff9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements La42;


# static fields
.field public static final c:Lff9;

.field public static final d:Lff9;

.field public static final e:Lff9;

.field public static final f:Lff9;

.field public static final k:Lff9;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lff9;

    .line 2
    .line 3
    const-string v1, "SHA1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lff9;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lff9;->c:Lff9;

    .line 10
    .line 11
    new-instance v0, Lff9;

    .line 12
    .line 13
    const-string v1, "SHA224"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lff9;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lff9;->d:Lff9;

    .line 19
    .line 20
    new-instance v0, Lff9;

    .line 21
    .line 22
    const-string v1, "SHA256"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lff9;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lff9;->e:Lff9;

    .line 28
    .line 29
    new-instance v0, Lff9;

    .line 30
    .line 31
    const-string v1, "SHA384"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lff9;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lff9;->f:Lff9;

    .line 37
    .line 38
    new-instance v0, Lff9;

    .line 39
    .line 40
    const-string v1, "SHA512"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lff9;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lff9;->k:Lff9;

    .line 46
    .line 47
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lff9;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lff9;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lff9;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lff9;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lff9;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
