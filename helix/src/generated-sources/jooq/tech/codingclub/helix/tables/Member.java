/**
 * This class is generated by jOOQ
 */
package tech.codingclub.helix.tables;

/**
 * This class is generated by jOOQ.
 */
@javax.annotation.Generated(value    = { "http://www.jooq.org", "3.3.2" },
                            comments = "This class is generated by jOOQ")
@java.lang.SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class Member extends org.jooq.impl.TableImpl<tech.codingclub.helix.tables.records.MemberRecord> {

	private static final long serialVersionUID = 1904371615;

	/**
	 * The singleton instance of <code>public.member</code>
	 */
	public static final tech.codingclub.helix.tables.Member MEMBER = new tech.codingclub.helix.tables.Member();

	/**
	 * The class holding records for this type
	 */
	@Override
	public java.lang.Class<tech.codingclub.helix.tables.records.MemberRecord> getRecordType() {
		return tech.codingclub.helix.tables.records.MemberRecord.class;
	}

	/**
	 * The column <code>public.member.name</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.MemberRecord, java.lang.String> NAME = createField("name", org.jooq.impl.SQLDataType.VARCHAR.length(100), this, "");

	/**
	 * The column <code>public.member.email</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.MemberRecord, java.lang.String> EMAIL = createField("email", org.jooq.impl.SQLDataType.VARCHAR.length(100), this, "");

	/**
	 * The column <code>public.member.role</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.MemberRecord, java.lang.String> ROLE = createField("role", org.jooq.impl.SQLDataType.VARCHAR.length(20), this, "");

	/**
	 * The column <code>public.member.password</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.MemberRecord, java.lang.String> PASSWORD = createField("password", org.jooq.impl.SQLDataType.VARCHAR.length(20), this, "");

	/**
	 * The column <code>public.member.image</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.MemberRecord, java.lang.String> IMAGE = createField("image", org.jooq.impl.SQLDataType.VARCHAR.length(100), this, "");

	/**
	 * The column <code>public.member.token</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.MemberRecord, java.lang.String> TOKEN = createField("token", org.jooq.impl.SQLDataType.VARCHAR.length(30), this, "");

	/**
	 * The column <code>public.member.is_verified</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.MemberRecord, java.lang.Boolean> IS_VERIFIED = createField("is_verified", org.jooq.impl.SQLDataType.BOOLEAN, this, "");

	/**
	 * The column <code>public.member.id</code>.
	 */
	public final org.jooq.TableField<tech.codingclub.helix.tables.records.MemberRecord, java.lang.Long> ID = createField("id", org.jooq.impl.SQLDataType.BIGINT.nullable(false).defaulted(true), this, "");

	/**
	 * Create a <code>public.member</code> table reference
	 */
	public Member() {
		this("member", null);
	}

	/**
	 * Create an aliased <code>public.member</code> table reference
	 */
	public Member(java.lang.String alias) {
		this(alias, tech.codingclub.helix.tables.Member.MEMBER);
	}

	private Member(java.lang.String alias, org.jooq.Table<tech.codingclub.helix.tables.records.MemberRecord> aliased) {
		this(alias, aliased, null);
	}

	private Member(java.lang.String alias, org.jooq.Table<tech.codingclub.helix.tables.records.MemberRecord> aliased, org.jooq.Field<?>[] parameters) {
		super(alias, tech.codingclub.helix.Public.PUBLIC, aliased, parameters, "");
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Identity<tech.codingclub.helix.tables.records.MemberRecord, java.lang.Long> getIdentity() {
		return tech.codingclub.helix.Keys.IDENTITY_MEMBER;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.util.List<org.jooq.UniqueKey<tech.codingclub.helix.tables.records.MemberRecord>> getKeys() {
		return java.util.Arrays.<org.jooq.UniqueKey<tech.codingclub.helix.tables.records.MemberRecord>>asList(tech.codingclub.helix.Keys.UNIQUE_EMAIL);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public tech.codingclub.helix.tables.Member as(java.lang.String alias) {
		return new tech.codingclub.helix.tables.Member(alias, this);
	}

	/**
	 * Rename this table
	 */
	public tech.codingclub.helix.tables.Member rename(java.lang.String name) {
		return new tech.codingclub.helix.tables.Member(name, null);
	}
}
