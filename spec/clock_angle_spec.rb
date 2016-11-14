require('rspec')
require('pry')
require('clock_angle')

describe('String#clock_angle') do
  it("tells us the amount of degrees between the hour hand and the minute hand of a clock at 12 oclock") do
    expect(("12 oclock").clock_angle("0")).to(eq(0))
  end

  it('tells us the amount of degrees between the hour hand and the minute hand of a clock at 6 oclock') do
    expect(('6 oclock').clock_angle("0")).to(eq(180))
  end

  it('tells us the amount of degrees between the hour hand and the minute hand of a clock at 6:15') do
    expect(('6').clock_angle('15')).to(eq(90))
  end

  it("tells us the amount of degrees between the hour hand and the minute hand of a clock at 6:08") do
    expect(('6').clock_angle('08')).to(eq(132))
  end
end
