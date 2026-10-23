.class public abstract Liu9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lkt9;

.field public static final b:Lkt9;

.field public static final c:Lgs9;

.field public static final d:Lju9;

.field public static final e:Ltj9;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkt9;

    .line 2
    .line 3
    const-class v1, Lhu9;

    .line 4
    .line 5
    const-class v2, Lgu9;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Liu9;->a:Lkt9;

    .line 11
    .line 12
    new-instance v0, Lkt9;

    .line 13
    .line 14
    const-class v2, La2a;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Liu9;->b:Lkt9;

    .line 20
    .line 21
    invoke-static {}, Liy9;->B()La89;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lgs9;

    .line 25
    .line 26
    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-direct {v0, v1, v2}, Lgs9;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Liu9;->c:Lgs9;

    .line 33
    .line 34
    new-instance v0, Lju9;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Liu9;->d:Lju9;

    .line 40
    .line 41
    new-instance v0, Ltj9;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {v0, v1}, Ltj9;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Liu9;->e:Ltj9;

    .line 48
    .line 49
    sput v2, Liu9;->f:I

    .line 50
    .line 51
    return-void
.end method
